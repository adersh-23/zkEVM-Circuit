## zkEVM Circuit
Here's a streamlined guide for working on the Circuit Gates-Zvkm project involving logic gates and zkSNARKs using circom:

---

## Project Overview

This project teaches you how to create zkSNARK circuits using circom, deploy a verifier contract on the Amoy testnet, and generate and verify proofs.

### Key Components

1. **Logic Gates**:
   - **AND Gate**: `X = A AND B`
   - **NOT Gate**: `X = NOT A`
   - **OR Gate**: `X = A OR B`

2. **Circuit Diagram**: 
   ![Circuit Diagram](https://authoring.metacrafters.io/assets/cms/Assessment_b05f6ed658.png?updated_at=2023-02-24T00:00:37.278Z)

3. **Templates**: Use gate templates from [circomlib](https://github.com/iden3/circomlib).

## Getting Started

### Setup

1. **Choose an IDE**:
   - Offline: [VSCode](https://code.visualstudio.com/download)
   - Online: [Remix](https://remix.ethereum.org/) or [Gitpod](https://gitpod.io/)

2. **Install Dependencies**:
   - **Node.js**: [Download](https://nodejs.org/en/download/current)
   - **Hardhat**: [Install](https://hardhat.org/)

3. **Configure Environment**:
   - **Private Keys**: Store securely using [dotenv](https://www.npmjs.com/package/dotenv).
   - **Testnet Configuration**: Update `circuits.config.json` with your testnet details.

4. **Fund Your Wallet**:
   - Obtain test MATIC from [Polygon Faucet](https://faucet.polygon.technology/).

### Installation

1. **Clone Project**:
   - Clone or use a [template](https://github.com/gmchad/zardkat).

2. **Environment Variables**:
   - Edit `.env.example` to add your PRIVATE KEY, then rename to `.env`.

### Running the Program

1. **Install npm Dependencies**:
   ```bash
   npm install
   ```

2. **Compile the Circuit**:
   ```bash
   npx hardhat circom
   ```
   - This generates the `out` directory with intermediaries and the `MultiplierVerifier.sol` contract.

3. **Configure Input Data**:
   - Edit `input.json` for the AND gate example:
     ```json
     {
       "a": "0",
       "b": "1"
     }
     ```

4. **Deploy and Verify**:
   ```bash
   npx hardhat run scripts/deploy.ts --network amoy
   ```
   - Deploys `MultiplierVerifier.sol` to Amoy testnet.
   - Generates proof from the circuit.
   - Verifies proof using the deployed contract.

5. **Verify Deployment**:
   - Check your contract ID on [Amoy Testnet Polyscan](https://amoy.polygonscan.com/).

### Directory Structure

- **circuits**: Contains circuit files and outputs.
  ```plaintext
  circuits
  ├── multiplier
  │   ├── circuit.circom
  │   ├── input.json
  │   └── out
  │       ├── circuit.wasm
  │       ├── multiplier.r1cs
  │       ├── multiplier.vkey
  │       └── multiplier.zkey
  ├── new-circuit
  └── powersOfTau28_hez_final_12.ptau
  ```

- **contracts**: Contains the verifier contracts.
  ```plaintext
  contracts
  └── MultiplierVerifier.sol
  ```

## Help

For troubleshooting or assistance, contact me at [adershanand003@gmail.com](mailto:adershanand003@gmail.com).

## Authors

- **Adersh** ([@adersh](mailto:adershanand003@gmail.com))

## License

- Licensed under the [Adersh] License. See LICENSE.md for details.

---

Feel free to reach out for additional help or if you have any questions about the project!