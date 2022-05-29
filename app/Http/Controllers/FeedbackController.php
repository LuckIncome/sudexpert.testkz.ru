<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\Consultation;
use Illuminate\Support\Facades\File;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FeedbackController extends Controller
{
    public $gmail = "024@i-marketing.kz";

    public function review(Request $request) 
    { 
		if($request->photo) {
        	$image = $request->photo;
			$path = storage_path('app/public/').'reviews/' . date('FY');
			if(!File::exists($path)) {
				File::makeDirectory($path, $mode = 0777, true, true);
			}
        	$filename = 'reviews/' . date('FY') . '/' . \Str::random();
			
				$result_img = \Image::make($image->getRealPath())->encode($image->getClientOriginalExtension(), 100);
				$resultWeb = \Image::make($image->getRealPath())->encode('webp');
				$resultWeb->save(storage_path('app/public/') . $filename . '.webp');
				$res = $result_img->save(storage_path('app/public/') . $filename . '.' . $image->getClientOriginalExtension());
		} else {
			$res = '';
		}
        $review = new Review();
        $review->name = $request->name;
        $review->email = $request->email;
        $review->content = $request->text;
        $review->image = $res ? '/reviews/' . date('FY') . '/' . $res->basename : $res;
        $review->status = false;
        $review->save();

        return response()->json(['success' => true], 200);
    }

    public function consultation(Request $request) 
    {
        $phone = $request->phone;
        $url = $request->url;

        $to = $this->gmail;
        $subject = "Заявка с сайта https://sudexpert1.kz";
        $sendfrom   = "user_mail@sudexpert1.kz";
        $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
        $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-Type: text/html;charset=utf-8 \r\n";
 
        $message = "
        $subject<br>
        <b>Телефон:</b> $phone <br>
        <b>URL:</b> $url";

        $send = mail($to, $subject, $message, $headers);
        
        $validator = Validator::make($request->all(), [
            'phone' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false], 400);
        }

        if ($send)
        { 
            $feedback = new Consultation();
            $feedback->phone = $request->phone;
            $feedback->save();
        }

        return response()->json(['success' => true], 200);
    }
	
	public function faq(Request $request) 
    {
        $phone = $request->phone;
        $url = $request->url;

        $to = $this->gmail;
        $subject = "Заявка с сайта https://sudexpert1.kz";
        $sendfrom   = "user_mail@sudexpert1.kz";
        $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
        $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
        $headers .= "MIME-Version: 1.0\r\n";
        $headers .= "Content-Type: text/html;charset=utf-8 \r\n";
 
        $message = "
        $subject<br>
        <b>Телефон:</b> $phone <br>
        <b>URL:</b> $url";

        $send = mail($to, $subject, $message, $headers);
        
        $validator = Validator::make($request->all(), [
            'phone' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false], 400);
        }

        if ($send)
        { 
            $feedback = new Consultation();
            $feedback->phone = $request->phone;
            $feedback->save();
        }

        return response()->json(['success' => true], 200);
    }
}


