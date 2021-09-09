function uti --description='alias uti=mdls -name kMDItemContentTypeTree'
    mdls -name kMDItemContentTypeTree $argv | awk -F\" '{ print $2 }' | awk NF
end
