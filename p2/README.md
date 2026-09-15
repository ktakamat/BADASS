Project: Badass Part2 - VXLAN Discovery
Login: ktakamat

[Overview]
This Project demonstrates the implementation of a VXLAN network in Static Mode using GNS3 and Docker containers. It connects two hosts (Host1 and Host2) over an underlay network formed by two routers (Router1 and Router2).

[Topology]
- Host1 (30.1.1.1) <--> Router1
- Router1 (10.1.1.1) <--> Switch <--> Router2 (10.1.1.2)
- Router2 <--> Host2 (30.1.1.2)

[Configuration Method]
Instead of using GNS3's "Edit config" feature, I used a shell script approach for better reliability and reproducibility.
The configuration is applied by injecting shell scripts directly into the running containers using 'docker exec'.

[File Description]
- Badass_part2.gns3project: The GNS3 project file (exported with base images).
- exec_confs.sh: The main script that detects running conatiners and applied the corresponding configuration.
- host_ktakamat-1, host_ktakamat-2: Configuration scripts for hosts (IP address setup).
- router_ktakamat-1, router_ktakamat-2: Configuration scripts for routers (Underlay IP, Static VXLAN tunnel, Bridge setup).
- Dockerfile.host / Dockerfile.router: Docker build files (same as Part1).

[How to Run]
1. Open the .gns3project file in GNS3.
2. Start all nodes.
3. Open a terminal in this folder.
4. Run the configuration script: $ ./exec_confs.sh
5. Verify connectivity from Host1: (Open Host1 console) $ping 30.1.1.2

[Note]
I chose the Static VXLAN mode (using 'remote' IP) to ensure stability in the GNS3 enviroment.
The configuration establishes a VXLAN tunnel (VNI 10) over the underlay network (10.1.1.0/24).
