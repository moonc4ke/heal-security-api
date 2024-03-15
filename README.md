
# Restaurant API

This is a simple Rails API application that provides endpoints to retrieve restaurant data from a CSV file.

## System Dependencies
- Ruby (version as specified in `.ruby-version` or `Gemfile`)
- Rails (version as specified in `Gemfile`)
- Bundler

## Local Setup
To set up the project on your local machine, follow these steps:

### 1. Clone the repository
```bash
git clone https://github.com/moonc4ke/heal-security-api.git
cd heal-security-api
```

### 2. Install dependencies
Make sure Bundler is installed:
```bash
gem install bundler
```

Then install the required gems:
```bash
bundle install
```

### 3. Start the Rails server
To start the server, run:
```bash
rails server
```

The API will be available at `http://localhost:3000`.

## Usage

### Get list of restaurants
To retrieve a list of restaurants, make a GET request to:
```
GET /restaurants
```

### Get a single restaurant by ID
To retrieve a single restaurant by its ID (which corresponds to its row in the CSV file, starting from 1), make a GET request to:
```
GET /restaurants/:id
```

Replace `:id` with the actual ID number of the restaurant.

## Notes

- The `restaurant-data.csv` file must be located in the `public` directory.
- The images for restaurants should be placed in the `public/images` directory.
- This application is configured to run without a database.

## Troubleshooting

- If you encounter issues with assets not being found, ensure they are located in the correct directories and have the correct names.
- If changes are not reflected after updating the CSV or assets, try restarting the Rails server.
