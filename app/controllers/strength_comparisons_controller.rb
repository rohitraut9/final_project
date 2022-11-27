class StrengthComparisonsController < ApplicationController
  def index
    matching_strength_comparisons = StrengthComparison.all

    @list_of_strength_comparisons = matching_strength_comparisons.order({ :created_at => :desc })

    render({ :template => "strength_comparisons/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_strength_comparisons = StrengthComparison.where({ :id => the_id })

    @the_strength_comparison = matching_strength_comparisons.at(0)

    render({ :template => "strength_comparisons/show.html.erb" })
  end

  def create
    the_strength_comparison = StrengthComparison.new
    the_strength_comparison.one_rep_max = params.fetch("query_one_rep_max")
    the_strength_comparison.user_id = session.fetch(:user_id)

    if the_strength_comparison.valid?
      the_strength_comparison.save
      redirect_to("/strength_comparisons", { :notice => "Strength comparison created successfully." })
    else
      redirect_to("/strength_comparisons", { :alert => the_strength_comparison.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_strength_comparison = StrengthComparison.where({ :id => the_id }).at(0)

    the_strength_comparison.one_rep_max = params.fetch("query_one_rep_max")
    the_strength_comparison.user_id = params.fetch("query_user_id")

    if the_strength_comparison.valid?
      the_strength_comparison.save
      redirect_to("/strength_comparisons/#{the_strength_comparison.id}", { :notice => "Strength comparison updated successfully."} )
    else
      redirect_to("/strength_comparisons/#{the_strength_comparison.id}", { :alert => the_strength_comparison.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_strength_comparison = StrengthComparison.where({ :id => the_id }).at(0)

    the_strength_comparison.destroy

    redirect_to("/strength_comparisons", { :notice => "Strength comparison deleted successfully."} )
  end

end
