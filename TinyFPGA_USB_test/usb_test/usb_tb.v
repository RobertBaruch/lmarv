`include "top_tb_header.vh"
  initial begin
    send_usb_out(0, 1);
    send_usb_data0({8'hA1}, 8);
    expect_usb_ack();

    #100000;

    send_usb_in(0, 1);
    expect_usb_nak();

    $finish(0);
  end
`include "top_tb_footer.vh"
