/**
 * Copyright 2013, 2015 IBM Corp.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

var fs = require("fs");

 
module.exports = {
    uiPort: 1880,
    mqttReconnectTime: 15000,
    serialReconnectTime: 15000,
    debugMaxLength: 1000,
    https: {
        key: fs.readFileSync('/opt/certs/privatekey.pem'),
        cert: fs.readFileSync('/opt/certs/certificate.pem')
    },

    adminAuth: {
	type: "credentials",
	users: [{
		username: "__USERNAME__",
		password: "__PASSWORD__",
		permissions: "*"
	}]
    },	
    functionGlobalContext: {
    },
    logging: {
        console: {
            level: "info",
            metrics: false
        }
    }
}
