Applying MVC - Part 2
============================
CodeFellows > Assignments > Extending class functionality 

1. Using your Post project from yesterday, write a new view controller to edit a post. (It could be a subclass of your "create post" view controller, which has data pre-populated when a user selects a post to edit.)
2. Write a protocol to surround the editing of a post. The post should have a delegate which it can inform when its data have changed, and it should have a data source from which it can request a new timestamp. (The delegate may be the PostsViewController, but the data source should probably be a new object.)
3. Write a category on UIColor that will do two things:
Return a random color
Lighten a given color
4. Give each post in your PostsViewController a random background color. The background color should not change when the view scrolls (if your view scrolls).