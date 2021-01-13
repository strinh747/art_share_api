class Comment < ApplicationRecord
    validates :body, presence: true

    belongs_to :author,
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id 

    belongs_to :artwork

    private

    def self.comments_for_user_id(user_id)
        Comment
            .left_outer_joins(:users)
            .where('comments.user_id = :user_id', user_id: user_id)
            .distinct
    end
end