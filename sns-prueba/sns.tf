module "sns-digital-card" {
    source = "../modules/sns"
    topic_name = "Poc-SNS-ca"
    phone = "+573203278909"
}
/*module "sns-digital-card" {
    source     = "../modules/sns"
    topic_name = "your_topic_name_here"
}*/