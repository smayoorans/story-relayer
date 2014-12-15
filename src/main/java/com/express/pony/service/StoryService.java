package com.express.pony.service;


import com.express.pony.model.Genre;
import com.express.pony.model.Story;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;

import java.util.List;

public interface StoryService {

    void initiateStory(Story story);

    void updateStory(Story story);

    List<Story> listInitiatedStories(String username);

    List<Story> listLatestStories(Genre genre);

    List<Story> listContributedStories(String username);

    boolean removeStory(Long id);

    Story findStory(long storyId);

    List<Story> topRatedStories();
}
