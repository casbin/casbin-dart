// Copyright 2018-2021 The Casbin Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import '../exception/casbin_adapter_exception.dart';
import '../model/model.dart';
import 'adapter.dart';

abstract class FilteredAdapter extends Adapter {
  /// loadFilteredPolicy loads only policy rules that match the filter.
  /// [model] the model.
  /// [filter] the filter used to specify which type of policy should be loaded.
  /// throws [CasbinAdapterException] if the file path or the type of the filter is incorrect.

  void loadFilteredPolicy(Model model, Object filter);

  /// IsFiltered returns true if the loaded policy has been filtered.
  /// return true if have any filter roles.

  bool isFiltered();
}
