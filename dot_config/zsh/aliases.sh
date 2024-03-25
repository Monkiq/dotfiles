if [ "$(uname)" = "Darwin" ]; then
	alias s="kitten ssh "
elif [ "$(uname)"="Linux" ]; then
fi

# alias kubectl="kubectl --kubeconfig /Users/monkiq/Projects/k8s/devcloud/monkiqchen_test/monkiqchen-test.conf"
alias kk=kubectl
