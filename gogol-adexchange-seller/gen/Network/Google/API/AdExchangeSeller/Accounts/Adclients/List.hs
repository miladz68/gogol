{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeSeller.Accounts.Adclients.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all ad clients in this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.adclients.list@.
module Network.Google.API.AdExchangeSeller.Accounts.Adclients.List
    (
    -- * REST Resource
      AccountsAdclientsListAPI

    -- * Creating a Request
    , accountsAdclientsList'
    , AccountsAdclientsList'

    -- * Request Lenses
    , aalQuotaUser
    , aalPrettyPrint
    , aalUserIp
    , aalAccountId
    , aalKey
    , aalPageToken
    , aalOauthToken
    , aalMaxResults
    , aalFields
    , aalAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangeseller.accounts.adclients.list which the
-- 'AccountsAdclientsList'' request conforms to.
type AccountsAdclientsListAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AdClients

-- | List all ad clients in this Ad Exchange account.
--
-- /See:/ 'accountsAdclientsList'' smart constructor.
data AccountsAdclientsList' = AccountsAdclientsList'
    { _aalQuotaUser   :: !(Maybe Text)
    , _aalPrettyPrint :: !Bool
    , _aalUserIp      :: !(Maybe Text)
    , _aalAccountId   :: !Text
    , _aalKey         :: !(Maybe Text)
    , _aalPageToken   :: !(Maybe Text)
    , _aalOauthToken  :: !(Maybe Text)
    , _aalMaxResults  :: !(Maybe Word32)
    , _aalFields      :: !(Maybe Text)
    , _aalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalQuotaUser'
--
-- * 'aalPrettyPrint'
--
-- * 'aalUserIp'
--
-- * 'aalAccountId'
--
-- * 'aalKey'
--
-- * 'aalPageToken'
--
-- * 'aalOauthToken'
--
-- * 'aalMaxResults'
--
-- * 'aalFields'
--
-- * 'aalAlt'
accountsAdclientsList'
    :: Text -- ^ 'accountId'
    -> AccountsAdclientsList'
accountsAdclientsList' pAalAccountId_ =
    AccountsAdclientsList'
    { _aalQuotaUser = Nothing
    , _aalPrettyPrint = True
    , _aalUserIp = Nothing
    , _aalAccountId = pAalAccountId_
    , _aalKey = Nothing
    , _aalPageToken = Nothing
    , _aalOauthToken = Nothing
    , _aalMaxResults = Nothing
    , _aalFields = Nothing
    , _aalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalQuotaUser :: Lens' AccountsAdclientsList' (Maybe Text)
aalQuotaUser
  = lens _aalQuotaUser (\ s a -> s{_aalQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalPrettyPrint :: Lens' AccountsAdclientsList' Bool
aalPrettyPrint
  = lens _aalPrettyPrint
      (\ s a -> s{_aalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalUserIp :: Lens' AccountsAdclientsList' (Maybe Text)
aalUserIp
  = lens _aalUserIp (\ s a -> s{_aalUserIp = a})

-- | Account to which the ad client belongs.
aalAccountId :: Lens' AccountsAdclientsList' Text
aalAccountId
  = lens _aalAccountId (\ s a -> s{_aalAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalKey :: Lens' AccountsAdclientsList' (Maybe Text)
aalKey = lens _aalKey (\ s a -> s{_aalKey = a})

-- | A continuation token, used to page through ad clients. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
aalPageToken :: Lens' AccountsAdclientsList' (Maybe Text)
aalPageToken
  = lens _aalPageToken (\ s a -> s{_aalPageToken = a})

-- | OAuth 2.0 token for the current user.
aalOauthToken :: Lens' AccountsAdclientsList' (Maybe Text)
aalOauthToken
  = lens _aalOauthToken
      (\ s a -> s{_aalOauthToken = a})

-- | The maximum number of ad clients to include in the response, used for
-- paging.
aalMaxResults :: Lens' AccountsAdclientsList' (Maybe Word32)
aalMaxResults
  = lens _aalMaxResults
      (\ s a -> s{_aalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aalFields :: Lens' AccountsAdclientsList' (Maybe Text)
aalFields
  = lens _aalFields (\ s a -> s{_aalFields = a})

-- | Data format for the response.
aalAlt :: Lens' AccountsAdclientsList' Alt
aalAlt = lens _aalAlt (\ s a -> s{_aalAlt = a})

instance GoogleRequest AccountsAdclientsList' where
        type Rs AccountsAdclientsList' = AdClients
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsAdclientsList'{..}
          = go _aalQuotaUser (Just _aalPrettyPrint) _aalUserIp
              _aalAccountId
              _aalKey
              _aalPageToken
              _aalOauthToken
              _aalMaxResults
              _aalFields
              (Just _aalAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsListAPI)
                      r
                      u