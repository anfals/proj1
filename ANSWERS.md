# Q0: Why is this error being thrown?
There is no Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A random pokemon is being chosen from the pokemon that were added from the seed. None of them have trainers

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It is creating a button, which when you click, makes a patch request to the capture_path we defined, with its sole param being the id of the current pokemon

# Question 3: What would you name your own Pokemon?
CS170

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
The id of the trainer who owns this pokemon; it was the trainer_path

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The validation put errors into the errors array. This line flashes the errors as comma separated string

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
