data "cloudflare_share_resource" "share_resource_lookup" {
  for_each = var.share_resource_lookup

  account_id        = each.value.account_id
  share_id          = each.value.share_id
  filter            = each.value.filter
  share_resource_id = each.value.share_resource_id
}

