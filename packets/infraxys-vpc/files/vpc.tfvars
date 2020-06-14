#set ($vpcName = $instance.getAttribute("vpc_name"))
vpc_name = "$instance.getAttribute("vpc_name")"
tags={ Name = "$vpcName", Environment = "test" }
