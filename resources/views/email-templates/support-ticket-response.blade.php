<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>{{\App\CPU\translate('Response to Your Support Ticket')}}</title>
    <style>
        body {
            background-color: #FFFFFF;
            padding: 0;
            margin: 0;
        }
    </style>
</head>

<body style="background-color: #FFFFFF; padding: 0; margin: 0;">

<table border="0" cellpadding="0" cellspacing="10" height="100%" bgcolor="#FFFFFF" width="100%"
       style="max-width: 650px;" id="bodyTable">
    <tr>
        <td align="center" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%" id="emailContainer"
                   style="font-family:Arial; color: #333333;">

                <!-- Logo -->
                @php($logo=\App\Model\BusinessSetting::where(['type'=>'company_web_logo'])->first()->value)
                <tr>
                    <td align="left" valign="top" colspan="2"
                        style="border-bottom: 1px solid #CCCCCC; padding-bottom: 10px;">
                        <img alt="" border="0" src="{{url('/').'/assets/company/'.$logo}}" title=""
                             class="sitelogo" width="60%" style="max-width:250px;"/>
                    </td>
                </tr>

                <!-- Title -->
                <tr>
                    <td align="left" valign="top" colspan="2"
                        style="border-bottom: 1px solid #CCCCCC; padding: 20px 0 10px 0;">
                        <span style="font-size: 18px; font-weight: normal;">{{\App\CPU\translate('New response to your support ticket')}}</span>
                    </td>
                </tr>

                <!-- Messages -->
                <tr>
                    <td align="left" valign="top" colspan="2" style="padding-top: 10px;">
                        <span style="font-size: 12px; line-height: 1.5; color: #333333;">
                            {{\App\CPU\translate('A new response has been added to your support ticket')}}.
                            <br/><br/>
                            {{\App\CPU\translate('Ticket ID')}} :
                            <h3 style="font-weight: 1000">{{$ticket['id']}}</h3>
                            {{\App\CPU\translate('Subject')}} :
                            <h4 style="font-weight: 700">{{$ticket['subject']}}</h4>
                            <br/>
                            <strong>{{\App\CPU\translate('Message')}}:</strong>
                            <div style="background-color: #f9f9f9; padding: 10px; border-left: 4px solid #CCCCCC;">
                                {!! $message_content !!}
                            </div>
                            <br/><br/>
                            {{\App\CPU\translate('You can view more details and reply by logging into your account')}}.
                            <br/><br/>
                            {{\App\CPU\translate('Thank you')}}.
                        </span>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
