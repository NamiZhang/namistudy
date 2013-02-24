@cd %~dp0
@title %~dp0
echo "update code............................................"
svn up
echo "mvn eclipse"
call mvn clean install -Dmaven.test.skip=true -DfailIfNoTests=false -Dmaven.test.failure.ignore=true --fail-at-end
echo "finish !"
@pause