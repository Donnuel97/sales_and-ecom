<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SupportTicketResponse extends Mailable
{
    use Queueable, SerializesModels;

    public $ticket;
    public $message_content;

    public function __construct($ticket, $message_content)
    {
        $this->ticket = $ticket;
        $this->message_content = $message_content;
    }

    public function build()
    {
        return $this->subject(translate('Support_Ticket_Response_Notification'))
                    ->view('email-templates.support-ticket-response', [
                        'ticket' => $this->ticket,
                        'message_content' => $this->message_content
                    ]);
    }
}
