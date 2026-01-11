Project: BADASS Part1
Login ID: ktakamat

[Description]
This project contains two Docker images configured for GNS3.
-Host: Alphine Linux with basic networking tools.
-Router: Alphine Linux with FRR installed and configured to run zebra, bgpd,
ospfd, and isisd.

[Files]
-Dockerfile.host: Configuration for the host image.
-Dockerfile.router: Configuration for the router image.
-daemons: Configureation file to enable FRR daemons.

[How to verify]
1. Import the .gns3project file into GNS#.
2. Start the nodes.
3. Open the console of 'ktakamat-router'
4. Verify that watchfrr starts all daemons (zebra, bgpd, ospfd, isisd)
