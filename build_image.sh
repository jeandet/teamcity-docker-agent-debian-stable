docker build -t jeandet/teamcity_agent_debian_stable .
docker run -d=true -e SERVER_URL=https://hephaistos.lpp.polytechnique.fr/teamcity --name=teamcity_agent_debian_stable -it jeandet/teamcity_agent_debian_stable &
sleep 300
docker stop teamcity_agent_debian_stable
docker commit teamcity_agent_debian_stable jeandet/teamcity_agent_debian_stable
docker rm teamcity_agent_debian_stable
