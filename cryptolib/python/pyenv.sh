#!/bin/bash

#########################################################################
# Copyright (C) 2017-2018 IAIK TU Graz and Fraunhofer AISEC
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#########################################################################
# @file pyenv.sh
# @brief Sets up a Python virtual environment.
# @license This project is released under the GNU GPLv3+ License.
# @author See AUTHORS file.
# @version 0.2
#########################################################################

#------------------------------------------------------------------------
# Settings
#------------------------------------------------------------------------
ENV=.pyenv27

#------------------------------------------------------------------------
# Create Environment
#------------------------------------------------------------------------
if ! [[ -f ${ENV}/.done ]]; then
  LOAD_PYENV_INTERPRETER=/usr/bin/python2.7
  virtualenv -p ${LOAD_PYENV_INTERPRETER} ${ENV} || exit 1
  source ${ENV}/bin/activate
  pip install -U pip
  pip install -U setuptools
  pip install click pycrypto
  touch ${ENV}/.done
fi
