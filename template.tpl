___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "CMPly Loader (Web)",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Loads CMPly SDK via GTM at Consent Initialization\nПосле этого:",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "siteId",
    "displayName": "Site ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[0-9a-fA-F-]{10,}$"
        ]
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "baseUrl",
    "displayName": "Base URL",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "^https?://.+"
        ]
      }
    ],
    "defaultValue": "https://dev.cmply.app"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// CMPly GTM Web Template sandboxed code (validated baseline).
// Intended for GTM Custom Template "Tag" (Web).

const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');

var baseUrl = (data.baseUrl || 'https://cmply.app').trim();
if (baseUrl.charAt(baseUrl.length - 1) === '/') {
  baseUrl = baseUrl.slice(0, -1);
}

var siteId = (data.siteId || '').trim();
if (!siteId) {
  data.gtmOnFailure();
  return;
}

var scriptUrl = baseUrl + '/sdk/gtm-loader.js?siteId=' + encodeUriComponent(siteId);

injectScript(
  scriptUrl,
  function () { data.gtmOnSuccess(); },
  function () { data.gtmOnFailure(); }
);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://dev.cmply.app/sdk/gtm-loader.js*"
              },
              {
                "type": 1,
                "string": "https://cmply.app/sdk/gtm-loader.js*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 24.02.2026, 21:01:10


