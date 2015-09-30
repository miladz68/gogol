{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesList@.
module Network.Google.Resource.Compute.Images.List
    (
    -- * REST Resource
      ImagesListResource

    -- * Creating a Request
    , imagesList'
    , ImagesList'

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilProject
    , ilUserIp
    , ilKey
    , ilFilter
    , ilPageToken
    , ilOauthToken
    , ilMaxResults
    , ilFields
    , ilAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesList@ which the
-- 'ImagesList'' request conforms to.
type ImagesListResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ImageList

-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ 'imagesList'' smart constructor.
data ImagesList' = ImagesList'
    { _ilQuotaUser   :: !(Maybe Text)
    , _ilPrettyPrint :: !Bool
    , _ilProject     :: !Text
    , _ilUserIp      :: !(Maybe Text)
    , _ilKey         :: !(Maybe Text)
    , _ilFilter      :: !(Maybe Text)
    , _ilPageToken   :: !(Maybe Text)
    , _ilOauthToken  :: !(Maybe Text)
    , _ilMaxResults  :: !Word32
    , _ilFields      :: !(Maybe Text)
    , _ilAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilQuotaUser'
--
-- * 'ilPrettyPrint'
--
-- * 'ilProject'
--
-- * 'ilUserIp'
--
-- * 'ilKey'
--
-- * 'ilFilter'
--
-- * 'ilPageToken'
--
-- * 'ilOauthToken'
--
-- * 'ilMaxResults'
--
-- * 'ilFields'
--
-- * 'ilAlt'
imagesList'
    :: Text -- ^ 'project'
    -> ImagesList'
imagesList' pIlProject_ =
    ImagesList'
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilProject = pIlProject_
    , _ilUserIp = Nothing
    , _ilKey = Nothing
    , _ilFilter = Nothing
    , _ilPageToken = Nothing
    , _ilOauthToken = Nothing
    , _ilMaxResults = 500
    , _ilFields = Nothing
    , _ilAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ilQuotaUser :: Lens' ImagesList' (Maybe Text)
ilQuotaUser
  = lens _ilQuotaUser (\ s a -> s{_ilQuotaUser = a})

-- | Returns response with indentations and line breaks.
ilPrettyPrint :: Lens' ImagesList' Bool
ilPrettyPrint
  = lens _ilPrettyPrint
      (\ s a -> s{_ilPrettyPrint = a})

-- | Project ID for this request.
ilProject :: Lens' ImagesList' Text
ilProject
  = lens _ilProject (\ s a -> s{_ilProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ilUserIp :: Lens' ImagesList' (Maybe Text)
ilUserIp = lens _ilUserIp (\ s a -> s{_ilUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' ImagesList' (Maybe Text)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
ilFilter :: Lens' ImagesList' (Maybe Text)
ilFilter = lens _ilFilter (\ s a -> s{_ilFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
ilPageToken :: Lens' ImagesList' (Maybe Text)
ilPageToken
  = lens _ilPageToken (\ s a -> s{_ilPageToken = a})

-- | OAuth 2.0 token for the current user.
ilOauthToken :: Lens' ImagesList' (Maybe Text)
ilOauthToken
  = lens _ilOauthToken (\ s a -> s{_ilOauthToken = a})

-- | Maximum count of results to be returned.
ilMaxResults :: Lens' ImagesList' Word32
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' ImagesList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

-- | Data format for the response.
ilAlt :: Lens' ImagesList' Alt
ilAlt = lens _ilAlt (\ s a -> s{_ilAlt = a})

instance GoogleRequest ImagesList' where
        type Rs ImagesList' = ImageList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesList'{..}
          = go _ilQuotaUser (Just _ilPrettyPrint) _ilProject
              _ilUserIp
              _ilKey
              _ilFilter
              _ilPageToken
              _ilOauthToken
              (Just _ilMaxResults)
              _ilFields
              (Just _ilAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesListResource)
                      r
                      u