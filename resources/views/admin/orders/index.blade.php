@extends('admin.app')

@section('title' , __('messages.orders'))

@section('content')
    <div id="tableSimple" class="col-lg-12 col-12 layout-spacing">
        <div class="statbox widget box box-shadow">
            <div class="widget-header">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-12">
                        <h4>{{ __('messages.orders') }}</h4>
                    </div>
                </div>
            </div>
            <div class="widget-content widget-content-area">
                <div clSass="table-responsive">
                    <table id="html5-extension" class="table table-hover non-hover" style="width:100%">
                        <thead>
                        <tr>
                            <th class="text-center">{{ __('messages.user_name') }}</th>
                            <th class="text-center">{{ __('messages.total') }}</th>
                            <th class="text-center">{{ __('messages.date') }}</th>
                            <th class="text-center">{{ __('messages.details') }}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $i = 1; ?>
                        @foreach ($data as $row)
                            <tr>
                                <td class="text-center blue-color">{{  $row->User->name }}</td>
                                <td class="text-center blue-color">{{  $row->total }}</td>
                                <td class="text-center blue-color">{{  $row->created_at->format('Y-m-d') }}</td>
                                <td class="text-center blue-color">
                                    <a
                                        href="{{ route('orders.show', $row->id) }}"><i
                                            class="far fa-eye"></i></a>

                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
