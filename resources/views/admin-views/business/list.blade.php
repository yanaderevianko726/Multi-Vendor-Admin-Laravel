@extends('layouts.admin.app')
@section('title','Business List')
@push('css_or_js')

@endpush

@section('content')
<div class="content container-fluid">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">{{trans('messages.dashboard')}}</a></li>
            <li class="breadcrumb-item" aria-current="page">{{trans('messages.business')}}
        </ol>
    </nav>
    <!-- Page Heading -->
    <div class="d-md-flex_ align-items-center justify-content-between mb-2">
        <div class="row">
            <div class="col-md-8">
                <h1 class="page-header-title"><i class="tio-filter-list"></i> {{__('messages.business')}} {{__('messages.list')}}
                </h1>
            </div>
            <div class="col-md-4">
                <a href="{{route('admin.business.add-new')}}" class="btn btn-primary  float-right">
                    <i class="tio-add-circle"></i>
                    <span class="text">{{trans('messages.add')}} {{trans('messages.new')}}</span>
                </a>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 20px">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header py-0">
                    <h5>Business List<span class="badge badge-soft-dark ml-2" id="itemCount">{{$em->total()}}</span></h5>
                    <form action="javascript:" id="search-form">
                        @csrf
                        <!-- Search -->
                        <div class="input-group input-group-merge input-group-flush">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="tio-search"></i>
                                </div>
                            </div>
                            <input id="datatableSearch_" type="search" name="search" class="form-control" placeholder="{{__('messages.search')}}" aria-label="Search">
                            <button type="submit" class="btn btn-light">{{__('messages.search')}}</button>
                        </div>
                        <!-- End Search -->
                    </form>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable"
                               class="table table-hover table-borderless table-thead-bordered table-nowrap table-align-middle card-table"
                               style="width: 100%"
                               data-hs-datatables-options='{
                                 "order": [],
                                 "orderCellsTop": true,
                                 "paging":false
                               }'>
                            <thead class="thead-light">
                            <tr>
                                <th>{{trans('messages.#')}}</th>
                                <th>{{trans('messages.name')}}</th>
                                <th>Website</th>
                                <th>{{trans('messages.email')}}</th>
                                <th>{{trans('messages.phone')}}</th>
                                
                                <th style="width: 50px">{{trans('messages.action')}}</th>
                            </tr>
                            </thead>
                            <tbody id="set-rows">
                            @foreach($em as $k=>$e)
                                <tr>
                                    <th scope="row">{{$k+$em->firstItem()}}</th>
                                    <td class="text-capitalize">{{$e['business_name']}}</td>
                                     <td>{{$e['website']}}</td>
                                    <td >
                                      {{$e['email']}}
                                    </td>
                                    <td>{{$e['phone']}}</td>
                                   
                                    <td>
                                        <a class="btn btn-sm btn-white"
                                            href="{{route('admin.business.edit',[$e['id']])}}" title="{{__('messages.edit')}} {{__('messages.Business')}}"><i class="tio-edit"></i>
                                        </a>
                                        <a class="btn btn-sm btn-danger" href="javascript:"
                                            onclick="form_alert('business-{{$e['id']}}','Want to delete this business ?')" title="{{__('messages.delete')}} {{__('messages.Business')}}"><i class="tio-delete-outlined"></i>
                                        </a>
                                        <form action="{{route('admin.business.delete',[$e['id']])}}"
                                                method="post" id="business-{{$e['id']}}">
                                            @csrf @method('delete')
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="page-area">
                        <table>
                            <tfoot>
                            {!! $em->links() !!}
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('script_2')
    <script>
        // Call the dataTables jQuery plugin
        $(document).ready(function () {
            $('#dataTable').DataTable();
        });
        $('#search-form').on('submit', function (e) {
            e.preventDefault();
            var formData = new FormData(this);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.post({
                url: '{{route('admin.employee.search')}}',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function () {
                    $('#loading').show();
                },
                success: function (data) {
                    $('#set-rows').html(data.view);
                    $('#itemCount').html(data.count);
                    $('.page-area').hide();
                },
                complete: function () {
                    $('#loading').hide();
                },
            });
        });
    </script>
@endpush
