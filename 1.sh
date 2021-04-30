#!/bin/sh

openstack user create --project myproject --password $(awk {'print $2'} mydata.txt
) $(awk {'print $1'} mydata.txt) 

openstack role add --project service --user $(awk {'print $1'} mydata.txt) --user-domain default member

truncate -s 0 mydata.txt
