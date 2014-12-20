package com.express.pony.service.impl;

import java.util.ArrayList;
import java.util.List;

import junit.framework.Assert;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.express.pony.model.Genre;
import com.express.pony.model.RestrictionType;
import com.express.pony.model.Story;
import com.express.pony.model.StoryPart;
import com.express.pony.model.StorySpec;
import com.express.pony.model.StoryStatus;
import com.express.pony.model.User;
import com.express.pony.service.StoryService;
import com.express.pony.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:test-app-context.xml", "classpath:hibernate.cfg.xml" })
public class StoryServiceTest {

	@Autowired
	private StoryService storyService;

	@Autowired
	private UserService userService;

	private User createUser() {
		User user = new User();
		long calledTimestamp = System.currentTimeMillis();
		user.setUserId(userService.findNewUserId());
		user.setUsername("Tester" + calledTimestamp);
		user.setDisplayName("Tester" + calledTimestamp);
		user.setEmail("tester@test.com");
		user.setFullName("Tester" + calledTimestamp);

		return user;
	}

	private Story createStory(User user) {
		Story story = new Story();
		story.setInitiator(user);

		long calledTimestamp = System.currentTimeMillis();

		story.setStoryName("Tester's Life" + calledTimestamp);
		story.setGenre(Genre.Crime);
		story.setLanguage("English");
		story.setSummary("summary" + calledTimestamp);

		List<StoryPart> storyPartList = createStoryPartList(user);

		story.setStoryParts(storyPartList);

		return story;
	}

	private List<StoryPart> createStoryPartList(User user) {
		List<StoryPart> storyPartList = new ArrayList<>();
		storyPartList.add(createStoryPart(user));

		return storyPartList;
	}

	private StoryPart createStoryPart(User user) {

		StoryPart storyPart = new StoryPart();
		storyPart.setAuthor(user);
		storyPart.setPartContent("Test");
		storyPart.setOrderIndex(0);
		storyPart.setReviewStars((short)3);

		return storyPart;
	}

	private StorySpec createStorySpec(User user) {

		StorySpec storySpec = new StorySpec();
		storySpec.setCanFork(false);
		storySpec.setNextNominatedUser(user);
		storySpec.setRestrictionType(RestrictionType.InitiatorControlled);
		storySpec.setStoryStatus(StoryStatus.COMPLETED);

		return storySpec;
	}

	@Test
	public void testInitiateStory() {

		User user = createUser();
		userService.addUser(user);
		Story story = createStory(user);
		StorySpec storySpec = createStorySpec(user);
		story.setStorySpec(storySpec);
		storyService.initiateStory(story);


		Story retvStory = storyService.findStory(story.getStoryId());
		Assert.assertNotNull(retvStory);
		Assert.assertEquals(retvStory.getStoryName(), story.getStoryName());
		Assert.assertEquals(retvStory.getLanguage(), story.getLanguage());
		Assert.assertEquals(retvStory.getSummary(), story.getSummary());

		StorySpec retvStorySpec = retvStory.getStorySpec();

		Assert.assertEquals(retvStorySpec.getNextNominatedUser().getUsername(), storySpec.getNextNominatedUser().getUsername());
		Assert.assertEquals(retvStorySpec.getRestrictionType(), storySpec.getRestrictionType());
		Assert.assertEquals(retvStorySpec.getStoryStatus(), storySpec.getStoryStatus());

	}

	@Test
	public void testListInitiatedStories() {

		User user1 = createUser();
		userService.addUser(user1);

		User user2 = createUser();
		userService.addUser(user2);

		Story story = createStory(user1);
		storyService.initiateStory(story);

		story = createStory(user1);
		storyService.initiateStory(story);

		story = createStory(user1);
		storyService.initiateStory(story);

		story = createStory(user2);
		storyService.initiateStory(story);

		Assert.assertEquals(storyService.listInitiatedStories(user1.getUsername()).size(), 3);

		Assert.assertEquals(storyService.listInitiatedStories(user2.getUsername()).size(), 1);

		for (Story st : storyService.listInitiatedStories(user1.getUsername())) {
			Assert.assertNotNull(st.getStoryName());
		}

	}

	@Test
	public void testListContributedStories() {

		User user1 = createUser();
		userService.addUser(user1);

		User user2 = createUser();
		userService.addUser(user2);

		Story story1 = createStory(user1);
		storyService.initiateStory(story1);

		Story story2 = createStory(user1);
		storyService.initiateStory(story2);

		Story story3 = createStory(user1);
		storyService.initiateStory(story3);

		Story story4 = createStory(user2);
		storyService.initiateStory(story4);

		User user3 = createUser();
		userService.addUser(user3);
		StoryPart newStoryPart1 = createStoryPart(user3);

		story4.addStoryPart(newStoryPart1);
		storyService.updateStory(story4);

		StoryPart newStoryPart2 = createStoryPart(user3);

		story3.addStoryPart(newStoryPart2);
		storyService.updateStory(story3);

		User user4 = createUser();
		userService.addUser(user4);
		StoryPart newStoryPart3 = createStoryPart(user4);

		story4.addStoryPart(newStoryPart3);
		storyService.updateStory(story4);


		Assert.assertEquals(storyService.listContributedStories(user4.getUsername()).size(), 1);

		Assert.assertEquals(storyService.listContributedStories(user3.getUsername()).size(), 2);

		for (Story st : storyService.listContributedStories(user3.getUsername())) {
			Assert.assertNotNull(st.getStoryName());
		}
	}

}
