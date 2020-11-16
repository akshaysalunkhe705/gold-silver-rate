import 'package:flutter/material.dart';
import 'package:goldsilverrate/injector.dart';
import 'package:scoped_model/scoped_model.dart';

// class BaseView<T extends Model> extends StatefulWidget {
//   final ScopedModelDescendantBuilder<T> _builder;
//   final Function(T) onModelReady;

//   BaseView({ScopedModelDescendantBuilder<T> builder, this.onModelReady})
//       : _builder = builder;

//   @override
//   _BaseViewState<T> createState() => _BaseViewState<T>();
// }

// class _BaseViewState<T extends Model> extends State<BaseView<T>> {
//   T _model = locator<T>();

//   @override
//   void initState() {
//     // TODO: implement initState
//     if (widget.onModelReady != null) {
//       widget.onModelReady(_model);
//     }
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ScopedModel<T>(
//       model: _model,
//       child: ScopedModelDescendant<T>(
//         builder: widget._builder,
//       ),
//     );
//   }
// }

class BaseView<T extends Model> extends StatelessWidget {
  final ScopedModelDescendantBuilder<T> _builder;
  BaseView({ScopedModelDescendantBuilder<T> builder}) : _builder = builder;
  @override
  Widget build(BuildContext context) {
    return ScopedModel<T>(
      model: locator<T>(),
      child: ScopedModelDescendant<T>(
        builder: _builder,
      ),
    );
  }
}
