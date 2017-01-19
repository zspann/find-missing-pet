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

+ Easy: Click the "Clone or Download" button and then download this repo as a Zip file. Unzip it and move the unzipped folder to your development directory.

+ Pro (Try this first): 'Fork' the repository and then clone it by clicking the "Clone or Download" button and then copying the SSH adress it gives you. In the terminal, navigate to your development directory and type `git clone SSH-ADDRESS` replacing SSH-ADDRESS with what you copied from github (it should look something like `git@github.com:upperlinecode/find-missing-pet.git`)

+ Type `ls` to make sure that the folder was downloaded and then `cd` into that folder.

### Get working!

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

For this, we're using `relative paths`. We're inside of the `find-missing-pet` directory and we're not going to use `cd` to move ourselves anywhere. Because `painting-elephants.jpg` doesn't exist inside the `find-missing-pet` directory, we have to tell the computer the path to go to find that image, which is through the `cats` directory, and then `indoor` and then finally `back-alley`.

Next, we have to tell the computer where to move the image. Because we're inside `find-missing-pet` and so is the `elephants` directory, we can just go straight there, and then into `painters`. Try moving some of the pets using this shortened technique!

### A Common Pitfall

Unfortunately the `mv` command actually has two uses: to move files, and to **rename** files. If you're trying to move a file and the place you are moving it to does not exist (maybe because your path isn't correct) what will happen is that you'll rename your file with the destination you were trying to provide. Using the example above I've removed the reference to the 'elephants' directory that the 'painters' directory:

```bash
mv cats/indoor/back-alley/painting-elephants.jpg painters
```

Since we can't access `painters` from where we currently are in the command line, the `painting-elephants.jpg` file will be renamed to `painters`. Oy. This can get confusing. If this happens, just use mv to rename the file back to its original name.

### How do I know if I'm finished?

Do you feel comfortable moving files around? Have you moved the animals to their correct locations?
