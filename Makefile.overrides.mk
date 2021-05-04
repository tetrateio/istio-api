# Copyright 2019 Istio Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# this repo is on the container plan by default
BUILD_WITH_CONTAINER ?= 1

# version of `build-tools` that corresponds to Istio 1.7.6 + patch that brings back support for k8s 1.15
# see https://github.com/tetrateio/istio-tools/tree/release-1.7.6
IMG ?= docker.io/tetrate/build-tools:release-1.7.6-2021-05-04T12-33-39

# if enabled, will verify that schema definitions match between versions (ie. v1alpha3 & v1beta1).
# only works with apiextensions.k8s.io/v1 kubernetes api (not with v1beta1)
VERIFY_CRDS_SCHEMA ?= 0
