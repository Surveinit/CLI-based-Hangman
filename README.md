# 😵 CLI-based-Hangman

A classic Hangman game implemented in Ruby CLI, where players guess letters to uncover a hidden word.

## 📂 File Structure
  

```
.

├── lib
  ├── display.rb
  ├── game.rb
  ├── player.rb
  ├── random_word.rb

├── data.json
├── google-10000-english-no-swears.txt
├── main.rb
└── README.md

```  

# 🧭 How to Run This Project
  

## > Prerequisites

  

1.  **Ruby**: Ensure you have Ruby installed on your system. You can download and install Ruby from [the official Ruby website](https://www.ruby-lang.org/en/downloads/).

  

2.  **Bundler**: Bundler is a tool for managing gem dependencies. Install Bundler if it is not already installed:

  

```sh

gem install bundler

```  

## > Getting Started

  

1.  **Clone the Repository**: If you haven’t already, clone the repository to your local machine:

  

```sh

git clone https://github.com/Surveinit/CLI-based-Hangman.git

```
  

2.  **Navigate to the Project Directory**:

  

```sh

cd CLI-BASED-HANGMAN

```

  

3.  **Install Dependencies**: Run Bundler to install the necessary gem dependencies specified in the `Gemfile`:

  

```sh

bundle install

```

  

4.  **Run the Project**: Start the project by executing the main script:

  

```sh

ruby main.rb

```

  

### > Sample Run

  

```

 ruby main.rb 

 Would you like to load previous game? (y/n) 
n
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
c
> c _ _ c _ _ _
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
o
> c o _ c _ _ _
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
n
> c o n c _ _ _
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
q
> c o n c _ _ _
6 turns remaining!
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
t
> c o n c _ _ t
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
r
> c o n c _ r t
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
g
> c o n c _ r t
5 turns remaining!
------------------------------
 Would you like to save this game? (y/n) 
n
 Enter the letter you're thinking. 
e
> c o n c e r t

 Yatta! You guessed the word correctly. 
------------------------------

```

  

### HEARTFELT THANKS TO [THEODINPROJECT](https://www.theodinproject.com).