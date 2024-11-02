# RecipesFridge

Project of an application that helps users find the most relevant recipes that they can prepare with the ingredients that they have at home


## Features

- **Ingredient-based Recipe Search**: Users can input ingredients they have, and the app will suggest recipes based on those ingredients.
- **Dynamic Content with Turbo (Hotwire)**: No page reloads needed! Updates are smooth and dynamic with Turbo Frames and Turbo Streams.
- **PostgreSQL Database**: Reliable and efficient database handling to store and retrieve recipes, ingredients, and user preferences.

## Technologies Used

- **Rails 7.2.2**
- **Turbo (Hotwire)**: For dynamic and real-time content updates
- **PostgreSQL**: As the database


### Prerequisites

- Ruby 3.x
- Rails 7.2.2
- PostgreSQL installed and running

**Clone the repository**:
  git clone https://github.com/Anne-Flower/RecipesFridge.git
  cd RecipesFridge

# Database

  rails db:create
  rails db:migrate
  rails db:seed
  
# Server
  rails s