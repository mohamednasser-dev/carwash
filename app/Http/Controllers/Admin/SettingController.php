<?php
namespace App\Http\Controllers\Admin;

//use JD\Cloudder\Facades\Cloudder;
use Illuminate\Http\Request;
use App\Setting;
use Cloudinary;

class SettingController extends AdminController{

    // get setting
    public function GetSetting(){
        $data['setting'] = Setting::find(1);
        return view('admin.setting' , ['data' => $data]);
    }

    // post setting
    public function PostSetting(Request $request){
        $setting = Setting::find(1);
//        if($request->file('logo')){
//            $logo = $setting->logo;
//            $publicId = substr($logo , 0 , strrpos($logo , "."));
//            Cloudder::delete($publicId);
//            $logo_name = $request->file('logo')->getRealPath();
//            Cloudder::upload($logo_name , null);
//            $logoreturned = Cloudder::getResult();
//            $logo_id = $logoreturned['public_id'];
//            $logo_format = $logoreturned['format'];
//            $logo_new_name = $logo_id.'.'.$logo_format;
//            $setting->logo = $logo_new_name;
//
//
//        }
        if($request->file('logo')){

            $logo = $request->file('logo')->getRealPath();
            $imagereturned = Cloudinary::upload($logo);
            $image_id = $imagereturned->getPublicId();
            $image_format = $imagereturned->getExtension();
            $image_new_logo = $image_id . '.' . $image_format;
            $setting->logo = $image_new_logo;

        }
        $setting->app_name_en = $request->app_name_en;
        $setting->app_name_ar = $request->app_name_ar;
        $setting->email = $request->email;
        $setting->phone = $request->phone;
        $setting->address_en = $request->address_en;
        $setting->address_ar = $request->address_ar;
        $setting->app_name_ar = $request->app_name_ar;
        $setting->facebook = $request->facebook;
        $setting->twitter = $request->twitter;
        $setting->snap_chat = $request->snap_chat;
        $setting->cars_service_num = $request->cars_service_num;
//        $setting->expier_days = $request->expier_days;
		$setting->save();
        return  back();
    }
}
