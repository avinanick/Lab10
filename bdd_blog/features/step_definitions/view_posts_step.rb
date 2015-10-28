Given /^I am on the blog homepage$/ do
	write_post_step
	write_post_step
	write_post_step
	write_post_step
end
Given /^I am on the blog homepage$/ do
	visit("/posts")
end
Then /^I can see list of 4 posts$/ do
	#page.should have_content(@title)
end