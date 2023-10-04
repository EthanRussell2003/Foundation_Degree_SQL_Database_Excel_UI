EXEC spAddPaymentType
@PaymentName = 'Debit',
@Description = 'Usage of customers debit card';

EXEC spAddPaymentType
@PaymentName = 'Credit',
@Description = 'Usage of customers credit card';

EXEC spAddPaymentType
@PaymentName = 'Paypal',
@Description = 'Usage of customers paypal account';

EXEC spAddPaymentType
@PaymentName = 'Google Pay',
@Description = 'Usage of customers google account to access customers stored card details';
