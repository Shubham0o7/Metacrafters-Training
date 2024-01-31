# Front-End Project
Simple Ethereum Contract Application

## Description

This project is a simple Ethereum contract application that allows users to interact with a contract deployed on the local Hardhat network. The contract includes functions for depositing and withdrawing funds, and the values of these functions are displayed in the frontend of the application built using Next.js.

## Getting Started

### Installing

1. Clone the repository to your local machine.

```
git clone <repository_url>
```

2. Navigate to the project directory.

```
cd <project_directory>
```

3. Install the project dependencies.

```
npm install
```


### Executing program

1. Open two additional terminals in your Visual Studio Code or any other code editor.

2. In the second terminal, start the local Hardhat network.

```
npx hardhat node
```


3. In the third terminal, deploy the contract on the local network.

```
npx hardhat run --network localhost scripts/deploy.js
```

4. Back in the first terminal, start the frontend application.

```
npm run dev
```


5. Open your web browser and navigate to `http://localhost:3000` to access the application.

