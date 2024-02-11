import '../../models/chain_metadata.dart';

class WalletConstants {
  static const mainChainMetaData = ChainMetadata(
    type: "eip155",
    chainId: 'eip155:1',
    name: 'Ethereum',
    method: "personal_sign",
    events: ["chainChanged", "accountsChanged"],
    relayUrl: "wss://relay.walletconnect.com",
    projectId: "034a1fa575d98854feebfaa0bf67484d",
    redirectUrl: "metamask://com.example.metamask_login",
    walletConnectUrl: "https://walletconnect.com",
  );
  static const deepLinkMetamask = "metamask://wc?uri=";
}
