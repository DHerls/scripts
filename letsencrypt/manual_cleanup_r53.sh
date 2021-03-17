#!/bin/bash
HOSTEDZONE=changeme
aws route53 change-resource-record-sets --hosted-zone-id $HOSTEDZONE --change-batch "{\"Changes\":[{\"Action\":\"DELETE\",\"ResourceRecordSet\":{\"Name\":\"_acme-challenge.$CERTBOT_DOMAIN\",\"Type\":\"TXT\",\"TTL\":300,\"ResourceRecords\":[{\"Value\":\"\\\"$CERTBOT_VALIDATION\\\"\"}]}}]}"
