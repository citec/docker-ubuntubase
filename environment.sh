#!/bin/bash

export HOST_IP=${HOST_IP:-$(hostname --all-ip-addresses | awk '{print $1}')}
export POSTGRES_USER=${POSTGRES_USER:-"odoo"}
export POSTGRES_PASSWORD=${POSTGRES_UWORDSER:-"12345"}
export ODOO_PORT=${ODOO_PORT:-"8072"}
export ODOO_DBNAME=${ODOO_DBNAME:-"siro"}
