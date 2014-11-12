---
  tags: command-line, bash, kids
  languages: bash
  level: 1
  type: lab
---

## Find the Missing Pet
### Instructions
<img src="http://www.blogcdn.com/blog.moviefone.com/media/2010/11/misterbisson.jpg" alt="Missing pet" height="200" align="right" hspace="20"> You just began your job as Web Developer at the Animal Sanctuary, and they aren't very good at organizing the photos of their favorite alumni animals. Somehow all photos ended up in the wrong folders! It's your job to move through their directory structure and put the animals in their right place. The photos have been named really well, so figuring out their correct location shouldn't be too tricky.

Because you're a legit programmer, you know the most efficient way is to navigate the directories on the command line. Use your bash command line skills to move the photos into their correct folders!

As a refresher, here's a list of commands to help you with this task:

`pwd` print working directory - shows you where you are

`cd ..` change your current directory to the parent (one above it)

`ls` list all files and directories

`mv` move a file

Remember, it's always helpful to know where you are in your directory tree in relation to where you want to go. Keep that in mind as you write out your command-line paths!

### Get the files and set up

Go to the GitHub link at the top of the page and click on the "Download Zip" button on the bottom-right side of the screen. Once you've downloaded the file, double click it to unzip the file, and then drag the unzipped file (called 'find-missing-pet-master') to your desktop.

Open your terminal and cd into desktop using `cd Desktop` and then cd into the file by typing `cd find-missing-pet-master`.

From here, run `bundle install` in your terminal. This is going to load the gems in the `Gemfile`. You don't need to worry about this right now. You'll learn about gems later in the course.

### Did you get an error message?

No prob. Try typing `sudo bundle install`. It will prompt you for your computer's admin password. If this goes through, continue to the next section of this README. If you still get an error, try typing `sudo gem install bundler`. If it prompts you, enter your password. This may take a while, as it has to connect to the internet and download it. Once that's finished, and you have your normal prompt, do the `bundle install` command.

### Get working!

From the `find-missing-pet-master` directory,  run `ruby test.rb` to check your progress! `test.rb` contains code that will check your placement of the animals to see if they are in the right place or not. This file will also print the result to the terminal screen, so you can keep track of which animals you've brought home.

Use the commands we've learned to move the animals to their right places. If everything prints green, you've successfully organized all the Animal Sanctuary's adorable animal pics!
<br>
