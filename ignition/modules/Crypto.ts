import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const CryptoModule = buildModule("CryptoModule", (m) => {

  const crypto = m.contract("Crypto");

  return { crypto };
});

export default CryptoModule;
