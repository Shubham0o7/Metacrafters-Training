## Project Title

Create a NFT Collection

## Description

In this project, I minted NFTs! Ok, not really, but we can pretend, yes? I simulated this by writing some JavaScript code that created an object that represents my NFT and that hold its metadata. This metadata can be anything you want. we used the following values like name, eye color, shirt type, shirt color, etc. After that, I created a variable to store all of my NFTs in. Next, I declared a function so as to print the details of epic NFTs to the console.

## Getting Started

### Features

Non-Fungible Tokens, often abbreviated as NFTs, are a type of digital asset that represent ownership or proof of authenticity of a unique item or piece of content using blockchain technology. Unlike cryptocurrencies such as Bitcoin or Ethereum, which are fungible and can be exchanged on a one-to-one basis, NFTs are non-fungible, meaning each token is distinct and cannot be exchanged on a like-for-like basis. This project is implemented in JavaScript and involves creating and managing NFTs (Non-Fungible Tokens)

### Functions

* mintNFT(_name, _eyeColor, _shirtType, _shirtColor)

  The mintNFT function takes four parameters: _name, _eyeColor, _shirtType, and _shirtColor. It creates an NFT object
  using these parameters, adds it to the NFTs array, and logs a message indicating the successful minting of the NFT.

```
   function mintNFT(_name, _eyeColor, _shirtType, _shirtColor) {
   // Create an NFT object using the provided parameters
   const NFT = { "name": _name, "eyeColor": _eyeColor, "shirtType": _shirtType, "shirtColor": _shirtColor };

   // Add the NFT object to the NFTs array NFTs.push(NFT);
   // Print a message indicating the NFT has been minted
   console.log("Minted: " + _name);
   }
```

* listNFTs() Function:

  The listNFTs function iterates through the NFTs array and prints out the metadata of each NFT object, including the
  ID (index + 1), name, eye color, shirt type, and shirt color.
```
    function listNFTs() {
    for (let i = 0; i < NFTs.length; i++) {
    console.log("\nID: " + (i + 1));
    console.log("Name: " + NFTs[i].name);
    console.log("EyeColor: " + NFTs[i].eyeColor);
    console.log("ShirtType: " + NFTs[i].shirtType);
    console.log("ShirtColor: " + NFTs[i].shirtColor);
    }
    }
```

* getTotalSupply() Function:

  The getTotalSupply function simply prints the total number of NFTs minted, which is equal to the length of the NFTs array.
```
    function getTotalSupply() {
    console.log("\n" + NFTs.length);
    }
```

### Implementation

1. Open a JavaScript environment, We use gitpod to implement our project. You may you node.js.
2. Copy and paste the provided code into the JavaScript environment.
3. Modify the code by calling the mintNFT() function to mint NFTs with desired metadata. You can provide the following parameters('_name','_eyeColor', '_shirtType', '_shirtColor')

```
    mintNFT("Shubham", "Black", "Henley", "Beige");
    mintNFT("Rishabh", "Brown", "Flannel", "Blue");
    mintNFT("Sumoksh", "Brown", "Linen", "Black");
    mintNFT("Anurag", "Black", "Polo", "Brown");
```
  
4. After minting NFTs, call the listNFTs() function to list the metadata of all minted NFTs.
5. To get the total supply of minted NFTs, call the getTotalSupply() function.
  
