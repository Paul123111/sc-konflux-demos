#!/bin/sh

# use this in RELEASE-1384 directory in user-ns2 namespace

oc apply -f RP/release-plan.yaml;
sleep 1;
oc delete release pipeline-release;
sleep 1;
oc apply -f Release/release.yaml;
sleep 1;
watch tkn pr ls --all-namespaces;