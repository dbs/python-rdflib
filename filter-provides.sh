#!/bin/sh
# See http://fedoraproject.org/wiki/PackagingDrafts/FilteringAutomaticDependencies
if [ -x /usr/lib/rpm/redhat/find-provides ] ; then
FINDPROV=/usr/lib/rpm/redhat/find-provides
else
FINDPROV=/usr/lib/rpm/find-provides
fi

$FINDPROV $* | sed -e '/SPARQLParserc.so/d'
