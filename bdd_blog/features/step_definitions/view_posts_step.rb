Given /^(\d+) posts exist$/ do |num_posts|
	for i in 1..num_posts.to_i do
		visit("/posts")
		click_on "New Post"
		title = "Title"
		content = "content"
		fill_in "Title", :with => title
		fill_in "Content", :with => content
		click_button "Post"
	end
	visit("/posts")
end
Then /^I can see list of (\d+) posted blogs$/ do |num_posts|
	#page.should have_content(@title)
end