# How I installed the Dell 1320c Colour Laset printer on Fedora F36

### Initial steps, code and idea to this solution (Ubuntu) found here:
https://tech.leeporte.co.uk/dell-1320c-on-ubuntu-18-04/

I modified those (very slightly) just so it works also on Fedora Linux F36

## Steps

1. Connect the printer to the USB port.

2. In terminal login as su:
Type in:

```
sudo su
```

3. 
Run the install.sh from terminal
```
chmod +x install.sh
./install.sh
```

4. In your web browser navigate to :
```
http://localhost:631/admin
```
(Use your system credentials to login as an admin)

5. Go to `Administration`
6. Hit `Add Printer`
7. Select `Dell Color Laser 1320c (Dell Color Laser 1320c)`
8. Tick the box 'Share This Printer' and continue
9. In the last Add Printer section, under the 'Or Provide a PPD File', select `Choose file` and select the PPD file (`dell-1320c.ppd`) from this repository
10. Finally hit `Add printer`.
11. Enjoy!

