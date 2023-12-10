# AI Course Recommendation Chatbot using Content based algorithms
> **Note** End of development phase

![ui](https://github.com/m-kiran-g/AI-Course-Recommendation-Chatbot/assets/136038904/a9ad155d-4e6b-4717-9b4e-75f19a63fc35)

# Table of Contents
1. [Introduction](#introduction)
2. [Real World Problem](#real-world-problem)
3. [The Chatbot](#the-chatbot)
4. [Usage](#usage)

# Introduction
This is an AI based Course recommedation chatbot that uses `contant based algorithms` on the coursera course dataset.

# Real World Problem
Often as IT entry level students or graduates we tend to feel lost into which course we need to invest our time into. With every domain, there will be many programs based on that particular field, but how do I select the best one for me and my needs??

**This is your answer!!**

# The Chatbot
- We priortised 2 factors: 
1) minimalism
2) efficiency

- This web based chatbot is easily deployable after set-up, with a user-friendly and minimalistic design to navigate you to find that perfect course to garner to your required skill from the top institutions.

>**Warning**: As of now, this is only bounded to the Coursera dataset.

# The filesystem
1) `skilllist.txt` - the list that contains the set of skills. 
> **Note** Make sure when you are typing the skills in the chatbot application, do capitalise every first letter or refer to this `.txt` file. Also multiple skillsets can be typed using `,` without spaces.


# Usage
> **Warning** Tested and deployed using Python 3.8.10.
> Also additional installation guides will be documented very soon. Stay tuned!!
- To run the application, initialise `virtualenv` and run
```bash
$env:FLASK_App='index.py'
$env:FLASK_ENV='development'
flask run
```
this launches the flask webapp in your `localhost:5000`.
- To view your application, type `localhost:5000` in your search bar.
> **Note** Make sure the `index.py` is actively running in the background to access the webapp, else the url will be **unreachable**.
