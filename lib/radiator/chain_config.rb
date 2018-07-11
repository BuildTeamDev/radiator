module Radiator
  module ChainConfig
    EXPIRE_IN_SECS = 600
    EXPIRE_IN_SECS_PROPOSAL = 24 * 60 * 60
    
    NETWORKS_STEEM_CHAIN_ID = '0000000000000000000000000000000000000000000000000000000000000000'
    NETWORKS_STEEM_ADDRESS_PREFIX = 'STM'
    NETWORKS_STEEM_CORE_ASSET = 'STEEM'
    NETWORKS_STEEM_DEBT_ASSET = 'SBD'
    NETWORKS_STEEM_VEST_ASSET = 'VESTS'
    NETWORKS_STEEM_DEFAULT_NODE = 'https://api.steemit.com'
    
    NETWORKS_TEST_CHAIN_ID = '18dcf0a285365fc58b71f18b3d3fec954aa0c141c44e4e5cb4cf777b9eab274e'
    NETWORKS_TEST_ADDRESS_PREFIX = 'TST'
    NETWORKS_TEST_CORE_ASSET = 'CORE'
    NETWORKS_TEST_DEBT_ASSET = 'TEST'
    NETWORKS_TEST_VEST_ASSET = 'CESTS'
    NETWORKS_TEST_DEFAULT_NODE = 'https://test.steem.ws'
    
    NETWORK_CHAIN_IDS = [NETWORKS_STEEM_CHAIN_ID, NETWORKS_TEST_CHAIN_ID]
  end
end