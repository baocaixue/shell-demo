docker run -it -p 9443:9443 --name is wso2/wso2is:5.7.0

curl --location --request POST 'https://localhost:9443/oauth2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Authorization: Basic RjhYazVGRUEydjZhMTBXRVcxZkQ0UnE3aDFJYTpxRjZwM3pROVpyQThJYlhvelA0QzVScGdmWUFh' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=admin' \
--data-urlencode 'password=admin' \
--data-urlencode 'scope=openid email'

curl --location --request GET 'https://localhost:9443/oauth2/userinfo?schema=openid' \
--header 'Authorization: Bearer d0d00623-76b4-3504-8412-84bb09ac3857'


docker run --name ldap -d -p 389:10389 openmicroscopy/apacheds
