@cd %~dp0
@title %~dp0
echo "update code............................................"
svn up
echo "mvn eclipse"
call mvn clean eclipse:clean eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=false -Declipse.addVersionToProjectName=true -DfailIfNoTests=false
echo "finish !"
@pause