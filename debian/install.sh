#!/bin/bash

mv /etc/default/locale /etc/default/locale_OLD
cat ./locale > /etc/default/locale
