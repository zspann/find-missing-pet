## Find the Missing Pet
### Instructions
<img src="http://www.blogcdn.com/blog.moviefone.com/media/2010/11/misterbisson.jpg" alt="Missing pet" height="200" align="right" hspace="20"> You just began your job as Web Developer at the Animal Sanctuary, and they aren't very good at organizing the photos of their favorite alumni animals. Somehow all photos ended up in the wrong folders! It's your job to move through their directory structure and put the animals in their right place. The photos have been named really well, so figuring out their correct location shouldn't be too tricky.

Because you're a legit programmer, you know the most efficient way is to navigate the directories in the command line. Use your bash command line skills to move the photos into their correct folders!

As a refresher, here's a list of commands to help you with this task:

`pwd` print working directory - shows you where you are

`cd ..` change your current directory to the parent (one above it)

`ls` list all files and directories

`mv` move a file. The `mv` command needs two extra pieces of information, the name of the file you're moving and where you want to move it. Let's say I want to move a file named `me.txt` back a level, I would enter `mv me.txt ..`.

Remember, it's always helpful to know where you are in your directory tree in relation to where you want to go. Keep that in mind as you write out your command-line paths!

### Get the files and set up
Let's first grab the files you'll need from Github.

+ At the top of the page, click the "Open" link. This will "Fork" the lab in Github, and download it to your local machine. You will automatically `cd` into the directory of the project in your terminal.

+ You have been placed in the "Lab directory" so that you can start working immediately! (What command would you run to make sure that you are actually in the "Lab directory" listed?)

Now that you are in your project directory, run `bundle install` in your terminal. This is going to load the gems in the `Gemfile`. You don't need to worry about this right now. You'll learn about gems later in the course.

### Did you get an error message?

No prob. Try typing `sudo bundle install`. It will prompt you for your computer's admin password. If this goes through, continue to the next section of this README. If you still get an error, try typing `sudo gem install bundler`. If it prompts you, enter your password. This may take a while, as it has to connect to the internet and download it. Once that's finished, and you have your normal prompt, do the `bundle install` command.

### Get working!

From the `find-missing-pet-master` directory,  run `ruby test.rb` in the terminal to check your progress! `test.rb` contains code that will check your placement of the animals to see if they are in the right place or not. This file will also print the result to the terminal screen, so you can keep track of which animals you've brought home.

Use the commands we've learned to move the animals to their right places. If everything prints green, you've successfully organized all the Animal Sanctuary's adorable animal pics!
<br>

### Let's Move One File Together

Notice that the `painting-elephants.jpg` image is located in `find-missing-pet < cats < indoor < back-alley`. But really, the painting elephant should go inside of `find-missing-pet < elephants < painters`. 

We can move this elephant image by entering in terminal from the main directory of this project...

```bash
cd cats
cd indoor
cd back-alley
mv painting-elephants.jpg ..
cd ..
mv painting-elephants.jpg ..
cd ..
mv painting-elephants.jpg ..
cd ..
mv painting-elephants.jpg elephants
cd elephants
mv painting-elephants.jpg painters
```

BUT WOW that's a lot of steps. Programming is all about making things simple, so there has to be a better way. In fact, we can actually combine all the steps into one short line:

```bash
mv cats/indoor/back-alley/painting-elephants.jpg elephants/painters
```

For this, we're using `relative paths`. We're inside of the `find-missing-pet` directory, and we're not going to use `cd` to move ourselves anywhere.Because `painting-elephants.jpg` doesn't exist inside the `find-missing-pet` directory, we have to tell the computer the path to go to find that image, which is through the `cats` directory, and then `indoor` and then finally `back-alley`.

Next, we have to tell the computer where to move the image. Because we're inside `find-missing-pet` and so is the `elephants` directory, we can just go straight there, and then into `painters`.
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/find-missing-pet' title='Find the Missing Pet'>Find the Missing Pet</a> on Learn.co and start learning to code for free.</p>
