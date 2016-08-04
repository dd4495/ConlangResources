# Pre-requisites #

* Windows PC running one of the following:
	* Windows 7
	* Windows 8/8.1
	* Windows 10


# Instructions #

* Open your Start menu and type 'Powershell' (without quotes).
* Click either the **Powershell** or **Powershell ISE** icon. 
* After Powershell opens, type 
		
		cd C:\savefolder 

	where *savefolder* is the folder in which you saved the script.
	* If your browser automatically saves downloaded files, the script will likely be in your Downloads folder.
* In the Powershell window, type
		
		.\Transform-Words -BaseWords kit, kat -Endings ik, ak, ok" 

	and press 'Enter'

	* You should see a table that looks like this:
	
		|  ik   | ak    | ok    |
		|-------|-------|-------|
		| kitik | kitak | kitok |
		| katik | katak | katok |

* Now, just replace the base words and endings with your own! 