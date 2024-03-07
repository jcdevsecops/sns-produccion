module "sns-digital-card" {
    source = "../modules/SNS"
    topic_name = "your_topic_name_here"
}
/*module "sns-digital-card" {
    source     = "../modules/sns"
    topic_name = "your_topic_name_here"
}*/