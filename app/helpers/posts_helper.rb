module PostsHelper
    def author_id_field(post)
        if post.author.nil?
          select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
        else
          hidden_field_tag "post[author_id]", post.author_id
        end
    end
    
    def author_index(post)
        if post.author.nil?
            "No Author Found, maybe try adding one?"
        else
            link_to post.author.name, author_posts_path(post.author)
        end
    end
end
