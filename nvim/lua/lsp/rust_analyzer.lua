-- This File is currently not used, and I'm not sure how to get it to work until
-- I can decipher the github docs.....
return {
    settings = {
        ['rust-analyzer'] = {
            inlayHints = {
                chainingHints = {
                    enable = true
                },
                closureReturnTypeHints = {
                    enable = "always"
                },
                expressionAdjustmentHints = {
                    enable = "always"
                }
            }
        }
    }
}
