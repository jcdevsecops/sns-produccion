module "sns-digital-card" {
    source = "../modules/SNS"
    topic_name = "POC-Topic-ca"
}

/*module "sns-digital-card" {
    source     = "../modules/sns"
    topic_name = "your_topic_name_here"
}*/